.class public final Lkn2$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls82;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkn2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ls82<",
        "TDataT;>;"
    }
.end annotation


# instance fields
.field public final b:Landroid/content/res/Resources$Theme;

.field public final c:Landroid/content/res/Resources;

.field public final d:Lkn2$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkn2$e<",
            "TDataT;>;"
        }
    .end annotation
.end field

.field public final e:I

.field public f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDataT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;Lkn2$e;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources$Theme;",
            "Landroid/content/res/Resources;",
            "Lkn2$e<",
            "TDataT;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkn2$d;->b:Landroid/content/res/Resources$Theme;

    iput-object p2, p0, Lkn2$d;->c:Landroid/content/res/Resources;

    iput-object p3, p0, Lkn2$d;->d:Lkn2$e;

    iput p4, p0, Lkn2$d;->e:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TDataT;>;"
        }
    .end annotation

    iget-object p0, p0, Lkn2$d;->d:Lkn2$e;

    invoke-interface {p0}, Lkn2$e;->a()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lkn2$d;->f:Ljava/lang/Object;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lkn2$d;->d:Lkn2$e;

    invoke-interface {p0, v0}, Lkn2$e;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public final c()Ly82;
    .locals 0

    sget-object p0, Ly82;->LOCAL:Ly82;

    return-object p0
.end method

.method public final cancel()V
    .locals 0

    return-void
.end method

.method public final f(Ljg6;Ls82$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljg6;",
            "Ls82$a<",
            "-TDataT;>;)V"
        }
    .end annotation

    :try_start_0
    iget-object p1, p0, Lkn2$d;->d:Lkn2$e;

    iget-object v0, p0, Lkn2$d;->b:Landroid/content/res/Resources$Theme;

    iget-object v1, p0, Lkn2$d;->c:Landroid/content/res/Resources;

    iget v2, p0, Lkn2$d;->e:I

    invoke-interface {p1, v1, v2, v0}, Lkn2$e;->c(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lkn2$d;->f:Ljava/lang/Object;

    invoke-interface {p2, p1}, Ls82$a;->d(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-interface {p2, p0}, Ls82$a;->e(Ljava/lang/Exception;)V

    return-void
.end method
