.class public final Lh36$g;
.super Lh36;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh36;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lh36<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/reflect/Method;

.field public final b:I

.field public final c:Ljv3;

.field public final d:Li02;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li02<",
            "TT;",
            "Lg37;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;ILjv3;Li02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "I",
            "Ljv3;",
            "Li02<",
            "TT;",
            "Lg37;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh36$g;->a:Ljava/lang/reflect/Method;

    iput p2, p0, Lh36$g;->b:I

    iput-object p3, p0, Lh36$g;->c:Ljv3;

    iput-object p4, p0, Lh36$g;->d:Li02;

    return-void
.end method


# virtual methods
.method public final a(Li37;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li37;",
            "TT;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lh36$g;->d:Li02;

    invoke-interface {v0, p2}, Li02;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg37;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lh36$g;->c:Ljv3;

    invoke-virtual {p1, p0, v0}, Li37;->c(Ljv3;Lg37;)V

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Unable to convert "

    const-string v1, " to RequestBody"

    invoke-static {p2, v0, v1}, Lch;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lh36$g;->a:Ljava/lang/reflect/Method;

    iget p0, p0, Lh36$g;->b:I

    invoke-static {v0, p0, p2, p1}, Lkb9;->j(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method
