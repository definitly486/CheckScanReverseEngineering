.class public final Lh36$f;
.super Lh36;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh36;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lh36<",
        "Ljv3;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/reflect/Method;

.field public final b:I


# direct methods
.method public constructor <init>(ILjava/lang/reflect/Method;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lh36$f;->a:Ljava/lang/reflect/Method;

    iput p1, p0, Lh36$f;->b:I

    return-void
.end method


# virtual methods
.method public final a(Li37;Ljava/lang/Object;)V
    .locals 3

    check-cast p2, Ljv3;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object p0, p1, Li37;->f:Ljv3$a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljv3;->size()I

    move-result p1

    :goto_0
    if-ge v0, p1, :cond_0

    invoke-virtual {p2, v0}, Ljv3;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0}, Ljv3;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljv3$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const-string p1, "Headers parameter must not be null."

    new-array p2, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lh36$f;->a:Ljava/lang/reflect/Method;

    iget p0, p0, Lh36$f;->b:I

    invoke-static {v0, p0, p1, p2}, Lkb9;->j(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method
