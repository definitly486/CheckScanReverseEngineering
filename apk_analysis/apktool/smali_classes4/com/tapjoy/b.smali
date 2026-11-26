.class public final Lcom/tapjoy/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/tapjoy/TJActivity;


# direct methods
.method public constructor <init>(Lcom/tapjoy/TJActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/b;->a:Lcom/tapjoy/TJActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/b;->a:Lcom/tapjoy/TJActivity;

    invoke-virtual {p0}, Lcom/tapjoy/TJActivity;->a()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
