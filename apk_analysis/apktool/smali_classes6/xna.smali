.class public final synthetic Lxna;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Lyads/ur0;

.field public final synthetic c:Lyads/fs2;

.field public final synthetic d:Ln07;

.field public final synthetic e:Lyads/bt0;

.field public final synthetic f:Lyads/vq0;

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(Lyads/ur0;Lyads/fs2;Ln07;Lyads/bt0;Lyads/vq0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxna;->b:Lyads/ur0;

    iput-object p2, p0, Lxna;->c:Lyads/fs2;

    iput-object p3, p0, Lxna;->d:Ln07;

    iput-object p4, p0, Lxna;->e:Lyads/bt0;

    iput-object p5, p0, Lxna;->f:Lyads/vq0;

    iput p6, p0, Lxna;->g:I

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    iget-object v4, p0, Lxna;->f:Lyads/vq0;

    iget v5, p0, Lxna;->g:I

    iget-object v0, p0, Lxna;->b:Lyads/ur0;

    iget-object v1, p0, Lxna;->c:Lyads/fs2;

    iget-object v2, p0, Lxna;->d:Ln07;

    iget-object v3, p0, Lxna;->e:Lyads/bt0;

    invoke-static/range {v0 .. v5}, Lyads/zs0;->a(Lyads/ur0;Lyads/fs2;Ln07;Lyads/bt0;Lyads/vq0;I)Lj59;

    move-result-object p0

    return-object p0
.end method
