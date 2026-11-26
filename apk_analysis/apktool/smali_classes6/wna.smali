.class public final synthetic Lwna;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field public final synthetic a:Lyads/vq0;

.field public final synthetic b:Lyads/ur0;

.field public final synthetic c:Lyads/fs2;

.field public final synthetic d:Lyads/bt0;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lyads/vq0;Lyads/ur0;Lyads/fs2;Lyads/bt0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwna;->a:Lyads/vq0;

    iput-object p2, p0, Lwna;->b:Lyads/ur0;

    iput-object p3, p0, Lwna;->c:Lyads/fs2;

    iput-object p4, p0, Lwna;->d:Lyads/bt0;

    iput p5, p0, Lwna;->e:I

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6

    iget-object v3, p0, Lwna;->d:Lyads/bt0;

    iget v4, p0, Lwna;->e:I

    iget-object v0, p0, Lwna;->a:Lyads/vq0;

    iget-object v1, p0, Lwna;->b:Lyads/ur0;

    iget-object v2, p0, Lwna;->c:Lyads/fs2;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lyads/zs0;->a(Lyads/vq0;Lyads/ur0;Lyads/fs2;Lyads/bt0;ILandroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method
