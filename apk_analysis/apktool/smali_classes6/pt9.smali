.class public final synthetic Lpt9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic b:Lyads/do0;


# direct methods
.method public synthetic constructor <init>(Lyads/do0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpt9;->b:Lyads/do0;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lpt9;->b:Lyads/do0;

    invoke-static {p0, p1}, Lyads/do0;->a(Lyads/do0;Landroid/content/DialogInterface;)V

    return-void
.end method
