.class public final synthetic Lxg9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/webkit/WebViewOutcomeReceiver;

.field public final synthetic c:Landroidx/webkit/WebViewStartupException;


# direct methods
.method public synthetic constructor <init>(Landroidx/webkit/WebViewOutcomeReceiver;Landroidx/webkit/WebViewStartupException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxg9;->b:Landroidx/webkit/WebViewOutcomeReceiver;

    iput-object p2, p0, Lxg9;->c:Landroidx/webkit/WebViewStartupException;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lxg9;->b:Landroidx/webkit/WebViewOutcomeReceiver;

    iget-object p0, p0, Lxg9;->c:Landroidx/webkit/WebViewStartupException;

    invoke-static {v0, p0}, Landroidx/webkit/internal/WebViewProviderFactoryAdapter;->a(Landroidx/webkit/WebViewOutcomeReceiver;Landroidx/webkit/WebViewStartupException;)V

    return-void
.end method
