.class public final synthetic Lhn9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lyads/j71;

.field public final synthetic c:Lyads/tt;

.field public final synthetic d:Landroid/view/ViewGroup;

.field public final synthetic e:Lyads/a91;

.field public final synthetic f:Lyads/j81;

.field public final synthetic g:Lyads/n32;

.field public final synthetic h:Lyads/ao2;


# direct methods
.method public synthetic constructor <init>(Lyads/j71;Lyads/tt;Landroid/view/ViewGroup;Lyads/a91;Lyads/j81;Lyads/n32;Lyads/ao2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhn9;->b:Lyads/j71;

    iput-object p2, p0, Lhn9;->c:Lyads/tt;

    iput-object p3, p0, Lhn9;->d:Landroid/view/ViewGroup;

    iput-object p4, p0, Lhn9;->e:Lyads/a91;

    iput-object p5, p0, Lhn9;->f:Lyads/j81;

    iput-object p6, p0, Lhn9;->g:Lyads/n32;

    iput-object p7, p0, Lhn9;->h:Lyads/ao2;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v5, p0, Lhn9;->g:Lyads/n32;

    iget-object v6, p0, Lhn9;->h:Lyads/ao2;

    iget-object v0, p0, Lhn9;->b:Lyads/j71;

    iget-object v1, p0, Lhn9;->c:Lyads/tt;

    iget-object v2, p0, Lhn9;->d:Landroid/view/ViewGroup;

    iget-object v3, p0, Lhn9;->e:Lyads/a91;

    iget-object v4, p0, Lhn9;->f:Lyads/j81;

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lyads/a91;->a(Lyads/j71;Lyads/tt;Landroid/view/ViewGroup;Lyads/a91;Lyads/j81;Lyads/n32;Lyads/ao2;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0
.end method
