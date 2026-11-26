.class public final synthetic Lzr9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lyads/cs1;

.field public final synthetic c:Lyads/et1;

.field public final synthetic d:Lyads/ur1;

.field public final synthetic e:Lyads/fs2;

.field public final synthetic f:Landroid/util/SparseArray;

.field public final synthetic g:Lyads/wr1;


# direct methods
.method public synthetic constructor <init>(Lyads/cs1;Lyads/et1;Lyads/ur1;Lyads/fs2;Landroid/util/SparseArray;Lyads/wr1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzr9;->b:Lyads/cs1;

    iput-object p2, p0, Lzr9;->c:Lyads/et1;

    iput-object p3, p0, Lzr9;->d:Lyads/ur1;

    iput-object p4, p0, Lzr9;->e:Lyads/fs2;

    iput-object p5, p0, Lzr9;->f:Landroid/util/SparseArray;

    iput-object p6, p0, Lzr9;->g:Lyads/wr1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v4, p0, Lzr9;->f:Landroid/util/SparseArray;

    iget-object v5, p0, Lzr9;->g:Lyads/wr1;

    iget-object v0, p0, Lzr9;->b:Lyads/cs1;

    iget-object v1, p0, Lzr9;->c:Lyads/et1;

    iget-object v2, p0, Lzr9;->d:Lyads/ur1;

    iget-object v3, p0, Lzr9;->e:Lyads/fs2;

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lyads/cs1;->a(Lyads/cs1;Lyads/et1;Lyads/ur1;Lyads/fs2;Landroid/util/SparseArray;Lyads/wr1;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0
.end method
