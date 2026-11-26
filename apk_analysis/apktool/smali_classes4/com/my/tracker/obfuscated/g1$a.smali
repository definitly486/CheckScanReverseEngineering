.class final Lcom/my/tracker/obfuscated/g1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/my/tracker/obfuscated/i0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/tracker/obfuscated/g1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/my/tracker/obfuscated/g1;


# direct methods
.method public constructor <init>(Lcom/my/tracker/obfuscated/g1;)V
    .locals 0

    iput-object p1, p0, Lcom/my/tracker/obfuscated/g1$a;->a:Lcom/my/tracker/obfuscated/g1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/my/tracker/obfuscated/g1$a;->a:Lcom/my/tracker/obfuscated/g1;

    iget-object p0, p0, Lcom/my/tracker/obfuscated/g1;->e:Lcom/my/tracker/obfuscated/a;

    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/a;->e()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/my/tracker/obfuscated/g1$a;->a:Lcom/my/tracker/obfuscated/g1;

    iget-object p0, p0, Lcom/my/tracker/obfuscated/g1;->f:Lcom/my/tracker/obfuscated/n;

    invoke-virtual {p0, p1}, Lcom/my/tracker/obfuscated/n;->b(Ljava/lang/String;)V

    return-void
.end method
