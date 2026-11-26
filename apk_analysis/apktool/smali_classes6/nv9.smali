.class public final synthetic Lnv9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lyads/g82;

.field public final synthetic c:Lyads/zo1;

.field public final synthetic d:Lyads/xz1;

.field public final synthetic e:Lyads/fs2;

.field public final synthetic f:Landroid/util/DisplayMetrics;

.field public final synthetic g:Lyads/b82;


# direct methods
.method public synthetic constructor <init>(Lyads/g82;Lyads/zo1;Lyads/xz1;Lyads/fs2;Landroid/util/DisplayMetrics;Lyads/b82;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnv9;->b:Lyads/g82;

    iput-object p2, p0, Lnv9;->c:Lyads/zo1;

    iput-object p3, p0, Lnv9;->d:Lyads/xz1;

    iput-object p4, p0, Lnv9;->e:Lyads/fs2;

    iput-object p5, p0, Lnv9;->f:Landroid/util/DisplayMetrics;

    iput-object p6, p0, Lnv9;->g:Lyads/b82;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v4, p0, Lnv9;->f:Landroid/util/DisplayMetrics;

    iget-object v5, p0, Lnv9;->g:Lyads/b82;

    iget-object v0, p0, Lnv9;->b:Lyads/g82;

    iget-object v1, p0, Lnv9;->c:Lyads/zo1;

    iget-object v2, p0, Lnv9;->d:Lyads/xz1;

    iget-object v3, p0, Lnv9;->e:Lyads/fs2;

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lyads/g82;->a(Lyads/g82;Lyads/zo1;Lyads/xz1;Lyads/fs2;Landroid/util/DisplayMetrics;Lyads/b82;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0
.end method
