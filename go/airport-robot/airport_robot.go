package airportrobot

type Greeter interface {
	LanguageName() string
	Greet(name string) string
}

func SayHello(name string, greeter Greeter) string {
	return "I can speak " + greeter.LanguageName() + ": " + greeter.Greet(name)
}

type Italian struct {}

func (language Italian) LanguageName() string {
	return "Italian"
}

func (language Italian) Greet(name string) string {
	return "Ciao " + name + "!"
}

type Portuguese struct {}

func (language Portuguese) LanguageName() string {
	return "Portuguese"
}

func (language Portuguese) Greet (name string) string {
	return "Olá " + name + "!"
}