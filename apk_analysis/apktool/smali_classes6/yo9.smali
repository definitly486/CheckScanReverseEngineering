.class public final synthetic Lyo9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lyads/bt0;

.field public final synthetic c:Lyads/tt;

.field public final synthetic d:Landroid/view/View;

.field public final synthetic e:Lyads/xr0;

.field public final synthetic f:Lyads/as2;

.field public final synthetic g:Lyads/nr4;


# direct methods
.method public synthetic constructor <init>(Lyads/bt0;Lyads/tt;Landroid/view/View;Lyads/xr0;Lyads/as2;Lyads/nr4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyo9;->b:Lyads/bt0;

    iput-object p2, p0, Lyo9;->c:Lyads/tt;

    iput-object p3, p0, Lyo9;->d:Landroid/view/View;

    iput-object p4, p0, Lyo9;->e:Lyads/xr0;

    iput-object p5, p0, Lyo9;->f:Lyads/as2;

    iput-object p6, p0, Lyo9;->g:Lyads/nr4;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    iget-object v4, p0, Lyo9;->f:Lyads/as2;

    iget-object v5, p0, Lyo9;->g:Lyads/nr4;

    iget-object v0, p0, Lyo9;->b:Lyads/bt0;

    iget-object v1, p0, Lyo9;->c:Lyads/tt;

    iget-object v2, p0, Lyo9;->d:Landroid/view/View;

    iget-object v3, p0, Lyo9;->e:Lyads/xr0;

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lyads/bt0;->a(Lyads/bt0;Lyads/tt;Landroid/view/View;Lyads/xr0;Lyads/as2;Lyads/nr4;Landroid/view/View;)V

    return-void
.end method
