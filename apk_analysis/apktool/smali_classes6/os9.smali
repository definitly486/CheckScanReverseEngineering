.class public final synthetic Los9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lyads/s22;

.field public final synthetic c:Lyads/as2;

.field public final synthetic d:Lyads/as2;

.field public final synthetic e:Lyads/in5;

.field public final synthetic f:Lyads/fs2;

.field public final synthetic g:Landroid/util/DisplayMetrics;


# direct methods
.method public synthetic constructor <init>(Lyads/s22;Lyads/as2;Lyads/as2;Lyads/in5;Lyads/fs2;Landroid/util/DisplayMetrics;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Los9;->b:Lyads/s22;

    iput-object p2, p0, Los9;->c:Lyads/as2;

    iput-object p3, p0, Los9;->d:Lyads/as2;

    iput-object p4, p0, Los9;->e:Lyads/in5;

    iput-object p5, p0, Los9;->f:Lyads/fs2;

    iput-object p6, p0, Los9;->g:Landroid/util/DisplayMetrics;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v5, p0, Los9;->g:Landroid/util/DisplayMetrics;

    move-object v6, p1

    check-cast v6, Lyads/g12;

    iget-object v0, p0, Los9;->b:Lyads/s22;

    iget-object v1, p0, Los9;->c:Lyads/as2;

    iget-object v2, p0, Los9;->d:Lyads/as2;

    iget-object v3, p0, Los9;->e:Lyads/in5;

    iget-object v4, p0, Los9;->f:Lyads/fs2;

    invoke-static/range {v0 .. v6}, Lyads/d22;->a(Lyads/s22;Lyads/as2;Lyads/as2;Lyads/in5;Lyads/fs2;Landroid/util/DisplayMetrics;Lyads/g12;)Lj59;

    move-result-object p0

    return-object p0
.end method
