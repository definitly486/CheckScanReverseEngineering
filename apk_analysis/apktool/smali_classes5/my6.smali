.class public final Lmy6;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Ljava/util/List<",
        "+",
        "Ljava/security/cert/Certificate;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lu81;

.field public final synthetic g:Llu3;

.field public final synthetic h:Ll9;


# direct methods
.method public constructor <init>(Lu81;Llu3;Ll9;)V
    .locals 0

    iput-object p1, p0, Lmy6;->f:Lu81;

    iput-object p2, p0, Lmy6;->g:Llu3;

    iput-object p3, p0, Lmy6;->h:Ll9;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lmy6;->f:Lu81;

    iget-object v0, v0, Lu81;->b:Ly14;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lmy6;->g:Llu3;

    invoke-virtual {v1}, Llu3;->a()Ljava/util/List;

    move-result-object v1

    iget-object p0, p0, Lmy6;->h:Ll9;

    iget-object p0, p0, Ll9;->h:Lfz3;

    iget-object p0, p0, Lfz3;->d:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Ly14;->v(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
