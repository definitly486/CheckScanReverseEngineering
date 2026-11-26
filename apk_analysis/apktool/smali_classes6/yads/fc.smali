.class public final Lyads/fc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final a:Landroid/app/Dialog;

.field public final b:Lyads/fr3;


# direct methods
.method public constructor <init>(Landroid/app/Dialog;Lyads/fr3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/fc;->a:Landroid/app/Dialog;

    iput-object p2, p0, Lyads/fc;->b:Lyads/fr3;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lyads/fc;->b:Lyads/fr3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lyads/fr3;->a(Landroid/view/View;)V

    iget-object p0, p0, Lyads/fc;->a:Landroid/app/Dialog;

    invoke-static {p0}, Lyads/eo0;->a(Landroid/app/Dialog;)V

    return-void
.end method
