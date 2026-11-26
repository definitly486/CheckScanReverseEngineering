.class public final Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;
.super Lcom/google/protobuf/o$a;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inappmessaging/MessagesProto$TextOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/MessagesProto$Text;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/o$a<",
        "Lcom/google/firebase/inappmessaging/MessagesProto$Text;",
        "Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;",
        ">;",
        "Lcom/google/firebase/inappmessaging/MessagesProto$TextOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->access$8900()Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/o$a;-><init>(Lcom/google/protobuf/o;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/firebase/inappmessaging/MessagesProto$1;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearHexColor()Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->access$9400(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V

    return-object p0
.end method

.method public clearText()Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->access$9100(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V

    return-object p0
.end method

.method public getHexColor()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->getHexColor()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHexColorBytes()Lfx0;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->getHexColorBytes()Lfx0;

    move-result-object p0

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextBytes()Lfx0;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->getTextBytes()Lfx0;

    move-result-object p0

    return-object p0
.end method

.method public setHexColor(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->access$9300(Lcom/google/firebase/inappmessaging/MessagesProto$Text;Ljava/lang/String;)V

    return-object p0
.end method

.method public setHexColorBytes(Lfx0;)Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->access$9500(Lcom/google/firebase/inappmessaging/MessagesProto$Text;Lfx0;)V

    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->access$9000(Lcom/google/firebase/inappmessaging/MessagesProto$Text;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTextBytes(Lfx0;)Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->access$9200(Lcom/google/firebase/inappmessaging/MessagesProto$Text;Lfx0;)V

    return-object p0
.end method
