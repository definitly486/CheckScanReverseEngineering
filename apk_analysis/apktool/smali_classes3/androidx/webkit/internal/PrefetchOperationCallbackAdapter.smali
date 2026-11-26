.class public Landroidx/webkit/internal/PrefetchOperationCallbackAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildInvocationHandler(Landroidx/webkit/WebViewOutcomeReceiver;)Ljava/lang/reflect/InvocationHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/webkit/WebViewOutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroidx/webkit/PrefetchException;",
            ">;)",
            "Ljava/lang/reflect/InvocationHandler;"
        }
    .end annotation

    new-instance v0, Landroidx/webkit/internal/PrefetchOperationCallbackAdapter$1;

    invoke-direct {v0, p0}, Landroidx/webkit/internal/PrefetchOperationCallbackAdapter$1;-><init>(Landroidx/webkit/WebViewOutcomeReceiver;)V

    new-instance p0, Lkt0$a;

    invoke-direct {p0, v0}, Lkt0$a;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method
