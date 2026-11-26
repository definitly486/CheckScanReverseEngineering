.class public final Lcom/warefly/checkscan/ui/SearchBar$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/ui/SearchBar;->setOnQueryTextChangedListener(Lcom/warefly/checkscan/ui/SearchBar$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/widget/ImageView;

.field public final synthetic b:Lcom/warefly/checkscan/ui/SearchBar;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/ui/SearchBar;Landroid/widget/ImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/ui/SearchBar$b;->b:Lcom/warefly/checkscan/ui/SearchBar;

    iput-object p2, p0, Lcom/warefly/checkscan/ui/SearchBar$b;->a:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/ui/SearchBar$b;->b:Lcom/warefly/checkscan/ui/SearchBar;

    iget-object v0, v0, Lcom/warefly/checkscan/ui/SearchBar;->c:Lcom/warefly/checkscan/ui/SearchBar$c;

    invoke-interface {v0}, Lcom/warefly/checkscan/ui/SearchBar$c;->a()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p0, p0, Lcom/warefly/checkscan/ui/SearchBar$b;->a:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/ui/SearchBar$b;->b:Lcom/warefly/checkscan/ui/SearchBar;

    iget-object p1, p0, Lcom/warefly/checkscan/ui/SearchBar;->b:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    iget-object p0, p0, Lcom/warefly/checkscan/ui/SearchBar;->c:Lcom/warefly/checkscan/ui/SearchBar$c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x1

    return p0
.end method
