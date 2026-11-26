.class public final Lcom/google/firebase/inappmessaging/MessagesProto$Button$Builder;
.super Lcom/google/protobuf/o$a;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inappmessaging/MessagesProto$ButtonOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/MessagesProto$Button;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/o$a<",
        "Lcom/google/firebase/inappmessaging/MessagesProto$Button;",
        "Lcom/google/firebase/inappmessaging/MessagesProto$Button$Builder;",
        ">;",
        "Lcom/google/firebase/inappmessaging/MessagesProto$ButtonOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->access$9700()Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/o$a;-><init>(Lcom/google/protobuf/o;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/firebase/inappmessaging/MessagesProto$1;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$Button$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearButtonHexColor()Lcom/google/firebase/inappmessaging/MessagesProto$Button$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->access$10200(Lcom/google/firebase/inappmessaging/MessagesProto$Button;)V

    return-object p0
.end method

.method public clearText()Lcom/google/firebase/inappmessaging/MessagesProto$Button$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->access$10000(Lcom/google/firebase/inappmessaging/MessagesProto$Button;)V

    return-object p0
.end method

.method public getButtonHexColor()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->getButtonHexColor()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getButtonHexColorBytes()Lfx0;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->getButtonHexColorBytes()Lfx0;

    move-result-object p0

    return-object p0
.end method

.method public getText()Lcom/google/firebase/inappmessaging/MessagesProto$Text;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->getText()Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    move-result-object p0

    return-object p0
.end method

.method public hasText()Z
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->hasText()Z

    move-result p0

    return p0
.end method

.method public mergeText(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)Lcom/google/firebase/inappmessaging/MessagesProto$Button$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->access$9900(Lcom/google/firebase/inappmessaging/MessagesProto$Button;Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V

    return-object p0
.end method

.method public setButtonHexColor(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/MessagesProto$Button$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->access$10100(Lcom/google/firebase/inappmessaging/MessagesProto$Button;Ljava/lang/String;)V

    return-object p0
.end method

.method public setButtonHexColorBytes(Lfx0;)Lcom/google/firebase/inappmessaging/MessagesProto$Button$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->access$10300(Lcom/google/firebase/inappmessaging/MessagesProto$Button;Lfx0;)V

    return-object p0
.end method

.method public setText(Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;)Lcom/google/firebase/inappmessaging/MessagesProto$Button$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    invoke-virtual {p1}, Lcom/google/protobuf/o$a;->build()Lcom/google/protobuf/o;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->access$9800(Lcom/google/firebase/inappmessaging/MessagesProto$Button;Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V

    return-object p0
.end method

.method public setText(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)Lcom/google/firebase/inappmessaging/MessagesProto$Button$Builder;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    .line 18
    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->access$9800(Lcom/google/firebase/inappmessaging/MessagesProto$Button;Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V

    return-object p0
.end method
