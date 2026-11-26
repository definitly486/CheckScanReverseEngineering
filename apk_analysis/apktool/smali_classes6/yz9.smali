.class public final synthetic Lyz9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic b:Lyads/jk1;

.field public final synthetic c:Lyads/tt;

.field public final synthetic d:Lyads/bn1;

.field public final synthetic e:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lyads/jk1;Lyads/tt;Lyads/bn1;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyz9;->b:Lyads/jk1;

    iput-object p2, p0, Lyz9;->c:Lyads/tt;

    iput-object p3, p0, Lyz9;->d:Lyads/bn1;

    iput-object p4, p0, Lyz9;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 7

    iget-object v2, p0, Lyz9;->d:Lyads/bn1;

    iget-object v3, p0, Lyz9;->e:Ljava/util/List;

    iget-object v0, p0, Lyz9;->b:Lyads/jk1;

    iget-object v1, p0, Lyz9;->c:Lyads/tt;

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lyads/jk1;->a(Lyads/jk1;Lyads/tt;Lyads/bn1;Ljava/util/List;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
