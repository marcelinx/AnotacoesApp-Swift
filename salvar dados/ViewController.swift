import UIKit

class ViewController: UIViewController {
    
    // Declaração do IBOutlet para o campo de texto
    @IBOutlet weak var textoCampo: UITextView!
    
    // Definição de uma chave para identificar a anotação no UserDefaults
    let chave = "minhaAnotacao"
    
    // Método acionado quando o botão de salvar é pressionado
    @IBAction func salvarAnotacao(_ sender: Any) {
        // Verifica se há texto no campo de texto
        if let texto = textoCampo.text {
            // Salva o texto no UserDefaults usando a chave definida
            UserDefaults.standard.set(texto, forKey: chave)
        }
    }
    
    // Método para recuperar a anotação salva no UserDefaults
    func recuperarAnotacao() -> String {
        // Verifica se há um valor associado à chave no UserDefaults
        if let textoRecuperado = UserDefaults.standard.object(forKey: chave) {
            // Converte e retorna o valor como uma string
            return textoRecuperado as! String
        }
        // Retorna uma string vazia se não houver valor associado à chave
        return ""
    }
    
    // Esconde a barra de status
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    // Método chamado quando toques são detectados na view
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // Finaliza a edição de texto ao tocar fora do campo de texto
        view.endEditing(true)
    }
    
    // Método chamado após a view ser carregada
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Ao carregar a view, exibe o texto recuperado no campo de texto
        textoCampo.text = recuperarAnotacao()
    }
    
    // Método chamado quando há um aviso de memória
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Implementação padrão para descartar quaisquer recursos que possam ser recreados
    }
}

