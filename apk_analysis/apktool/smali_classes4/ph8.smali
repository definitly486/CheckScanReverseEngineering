.class public final synthetic Lph8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# instance fields
.field public final synthetic a:Lcom/tapjoy/TJActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tapjoy/TJActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lph8;->a:Lcom/tapjoy/TJActivity;

    return-void
.end method


# virtual methods
.method public final onBackInvoked()V
    .locals 0

    iget-object p0, p0, Lph8;->a:Lcom/tapjoy/TJActivity;

    invoke-virtual {p0}, Lcom/tapjoy/TJActivity;->a()V

    return-void
.end method
