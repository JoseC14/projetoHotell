unit HospedeDTO;

interface
 type
   THospedeDTO = class
      FNome: String;
      FCpf: String;
      FCep: String;
      FFone: String;
      FSexo: String;
      FNacionalidade: String;
      FProfissao: String;
      FIdade:Integer;

      public
      property Nome: String read FNome write FNome;
      property Cpf: String read FCpf write FCpf;
      property Cep: String read FCep write FCep;
      property Fone: String read FFone write FFone;
      property Sexo: String read FSexo write FSexo;
      property Nacionalidade: String read FNacionalidade write FNacionalidade;
      property Profissao: String read FProfissao write FProfissao;
      property Idade: Integer read FIdade write FIdade;



   end;
implementation

end.
