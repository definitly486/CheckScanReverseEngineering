.class public final synthetic Lj7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;
.implements Lcom/google/firebase/crashlytics/internal/breadcrumbs/BreadcrumbSource;
.implements Lxl3;
.implements Ld29;
.implements Landroidx/media3/common/util/ListenerSet$Event;
.implements Lk68$b;
.implements Landroidx/media3/common/util/Consumer;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lj7;->b:I

    iput-object p1, p0, Lj7;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lk68;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1

    iget-object p0, p0, Lj7;->c:Ljava/lang/Object;

    check-cast p0, Ly91$f;

    new-instance v0, Li68;

    invoke-direct {v0, p1, p2, p0}, Li68;-><init>(Lk68;Ljava/lang/CharSequence;Ly91$f;)V

    return-object v0
.end method

.method public accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lj7;->c:Ljava/lang/Object;

    check-cast p0, Lcom/google/common/collect/j$a;

    check-cast p1, Landroidx/media3/extractor/text/CuesWithTiming;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/i$a;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lj7;->b:I

    iget-object p0, p0, Lj7;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/google/firebase/sessions/EventGDTLogger;

    check-cast p1, Lcom/google/firebase/sessions/SessionEvent;

    invoke-static {p0, p1}, Lcom/google/firebase/sessions/EventGDTLogger;->a(Lcom/google/firebase/sessions/EventGDTLogger;Lcom/google/firebase/sessions/SessionEvent;)[B

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Ltv;

    invoke-virtual {p0, p1}, Ltv;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc18;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lj7;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/common/SimpleBasePlayer$State;

    check-cast p1, Landroidx/media3/common/Player$Listener;

    invoke-static {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->o(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public onActivityResult(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lj7;->c:Ljava/lang/Object;

    check-cast p0, Lnl3;

    invoke-static {p0, p1}, Landroidx/activity/result/ActivityResultCallerKt;->b(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method public registerBreadcrumbHandler(Lcom/google/firebase/crashlytics/internal/breadcrumbs/BreadcrumbHandler;)V
    .locals 0

    iget-object p0, p0, Lj7;->c:Ljava/lang/Object;

    check-cast p0, Lcom/google/firebase/crashlytics/AnalyticsDeferredProxy;

    invoke-static {p0, p1}, Lcom/google/firebase/crashlytics/AnalyticsDeferredProxy;->c(Lcom/google/firebase/crashlytics/AnalyticsDeferredProxy;Lcom/google/firebase/crashlytics/internal/breadcrumbs/BreadcrumbHandler;)V

    return-void
.end method
