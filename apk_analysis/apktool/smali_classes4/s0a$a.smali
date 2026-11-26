.class public final Ls0a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llma$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls0a;->b(Ls0a$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lh14;

.field public final synthetic b:Lifa;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic e:Ls0a$b;


# direct methods
.method public constructor <init>(Lh14;Lifa;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ls0a$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls0a$a;->a:Lh14;

    iput-object p2, p0, Ls0a$a;->b:Lifa;

    iput-object p3, p0, Ls0a$a;->c:Ljava/lang/String;

    iput-object p4, p0, Ls0a$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p5, p0, Ls0a$a;->e:Ls0a$b;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 80
    iget-object v0, p0, Ls0a$a;->b:Lifa;

    iget-object v0, v0, Lifa;->b:Lpp9;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "imageUrl="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ls0a$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xfa1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2, v1}, Lpp9;->d(IILjava/lang/String;)V

    .line 81
    iget-object v0, p0, Ls0a$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 82
    iget-object p0, p0, Ls0a$a;->e:Ls0a$b;

    invoke-interface {p0}, Ls0a$b;->a()V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Landroid/graphics/Bitmap;

    iget-object v0, p0, Ls0a$a;->a:Lh14;

    iput-object p1, v0, Lxha;->d:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iget v2, v0, Lxha;->c:I

    if-eqz v2, :cond_0

    iget v3, v0, Lxha;->b:I

    if-nez v3, :cond_1

    :cond_0
    iput p1, v0, Lxha;->c:I

    iput v1, v0, Lxha;->b:I

    move v2, p1

    move v3, v1

    :cond_1
    if-ne v3, v1, :cond_2

    if-eq v2, p1, :cond_3

    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v3, v2, v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "JSON image params (%d x %d) differ than loaded bitmap params (%d x %d)"

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ly14;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object p1, p0, Ls0a$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_4

    iget-object p0, p0, Ls0a$a;->e:Ls0a$b;

    invoke-interface {p0}, Ls0a$b;->a()V

    :cond_4
    return-void
.end method
