.class Lcom/my/tracker/obfuscated/m0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/my/tracker/obfuscated/m0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/my/tracker/obfuscated/m0;->a(Landroid/content/Context;)Lcom/my/tracker/obfuscated/l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/my/tracker/obfuscated/t1;

.field final synthetic b:Lcom/my/tracker/obfuscated/m0;


# direct methods
.method public constructor <init>(Lcom/my/tracker/obfuscated/m0;Lcom/my/tracker/obfuscated/t1;)V
    .locals 0

    iput-object p1, p0, Lcom/my/tracker/obfuscated/m0$a;->b:Lcom/my/tracker/obfuscated/m0;

    iput-object p2, p0, Lcom/my/tracker/obfuscated/m0$a;->a:Lcom/my/tracker/obfuscated/t1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 38
    const-string p0, "FirebaseAppInstanceIdProvider: retrieving firebase app instance id finished unsuccessfully"

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/my/tracker/obfuscated/m0$a;->b:Lcom/my/tracker/obfuscated/m0;

    new-instance v1, Lcom/my/tracker/obfuscated/l0;

    invoke-direct {v1, p1}, Lcom/my/tracker/obfuscated/l0;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/my/tracker/obfuscated/m0;->a:Lcom/my/tracker/obfuscated/l0;

    iget-object v0, p0, Lcom/my/tracker/obfuscated/m0$a;->a:Lcom/my/tracker/obfuscated/t1;

    invoke-virtual {v0, p1}, Lcom/my/tracker/obfuscated/t1;->j(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "FirebaseAppInstanceIdProvider: retrieved firebase app instance id %"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/my/tracker/obfuscated/m0$a;->b:Lcom/my/tracker/obfuscated/m0;

    iget-object p0, p0, Lcom/my/tracker/obfuscated/m0;->a:Lcom/my/tracker/obfuscated/l0;

    iget-object p0, p0, Lcom/my/tracker/obfuscated/l0;->a:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    return-void
.end method
