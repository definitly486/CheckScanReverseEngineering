.class public final synthetic Lzi5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Landroidx/navigation/NavDirections;


# direct methods
.method public synthetic constructor <init>(Landroidx/navigation/NavDirections;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzi5;->b:Landroidx/navigation/NavDirections;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lzi5;->b:Landroidx/navigation/NavDirections;

    invoke-static {p0, p1}, Landroidx/navigation/Navigation;->c(Landroidx/navigation/NavDirections;Landroid/view/View;)V

    return-void
.end method
