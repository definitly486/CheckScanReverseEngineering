.class public final Lcom/warefly/checkscan/ui/SearchBar$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/ui/SearchBar;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/widget/EditText;

.field public final synthetic c:Landroid/widget/ImageView;

.field public final synthetic d:Lcom/warefly/checkscan/ui/SearchBar;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/ui/SearchBar;Landroid/widget/EditText;Landroid/widget/ImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/ui/SearchBar$a;->d:Lcom/warefly/checkscan/ui/SearchBar;

    iput-object p2, p0, Lcom/warefly/checkscan/ui/SearchBar$a;->b:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/warefly/checkscan/ui/SearchBar$a;->c:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/warefly/checkscan/ui/SearchBar$a;->b:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/warefly/checkscan/ui/SearchBar$a;->d:Lcom/warefly/checkscan/ui/SearchBar;

    iget-object p1, p1, Lcom/warefly/checkscan/ui/SearchBar;->b:Landroidx/appcompat/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    iget-object p0, p0, Lcom/warefly/checkscan/ui/SearchBar$a;->c:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
