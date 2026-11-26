.class public Lcom/google/firebase/inappmessaging/model/Text$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/model/Text;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private hexColor:Ljava/lang/String;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/firebase/inappmessaging/model/Text;
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/Text$Builder;->hexColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/firebase/inappmessaging/model/Text;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/model/Text$Builder;->text:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/model/Text$Builder;->hexColor:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/google/firebase/inappmessaging/model/Text;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/inappmessaging/model/Text$1;)V

    return-object v0

    :cond_0
    const-string p0, "Text model must have a color"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public setHexColor(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/model/Text$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/model/Text$Builder;->hexColor:Ljava/lang/String;

    return-object p0
.end method

.method public setText(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)Lcom/google/firebase/inappmessaging/model/Text$Builder;
    .locals 1

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/inappmessaging/model/Text$Builder;->setText(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/model/Text$Builder;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->getHexColor()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/inappmessaging/model/Text$Builder;->setHexColor(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/model/Text$Builder;

    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/model/Text$Builder;
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/model/Text$Builder;->text:Ljava/lang/String;

    return-object p0
.end method
