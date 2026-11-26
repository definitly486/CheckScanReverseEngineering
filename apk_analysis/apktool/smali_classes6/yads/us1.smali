.class public final Lyads/us1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic b:Lyads/vs1;


# direct methods
.method public constructor <init>(Lyads/vs1;)V
    .locals 0

    iput-object p1, p0, Lyads/us1;->b:Lyads/vs1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p0, p0, Lyads/us1;->b:Lyads/vs1;

    invoke-virtual {p0}, Lyads/vs1;->a()V

    return-void
.end method
