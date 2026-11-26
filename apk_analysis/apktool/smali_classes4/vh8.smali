.class public final synthetic Lvh8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/tapjoy/TJAdUnitJSBridge;

.field public final synthetic c:Landroid/webkit/WebView;

.field public final synthetic d:Z

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lcom/tapjoy/TJAdUnitJSBridge;Landroid/webkit/WebView;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvh8;->b:Lcom/tapjoy/TJAdUnitJSBridge;

    iput-object p2, p0, Lvh8;->c:Landroid/webkit/WebView;

    iput-boolean p3, p0, Lvh8;->d:Z

    iput-boolean p4, p0, Lvh8;->e:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-boolean v0, p0, Lvh8;->d:Z

    iget-boolean v1, p0, Lvh8;->e:Z

    iget-object v2, p0, Lvh8;->b:Lcom/tapjoy/TJAdUnitJSBridge;

    iget-object p0, p0, Lvh8;->c:Landroid/webkit/WebView;

    invoke-virtual {v2, p0, v0, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->a(Landroid/webkit/WebView;ZZ)V

    return-void
.end method
