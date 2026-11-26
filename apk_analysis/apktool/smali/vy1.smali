.class public final synthetic Lvy1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lvy1;->b:I

    iput-object p1, p0, Lvy1;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lvy1;->b:I

    iget-object p0, p0, Lvy1;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->a(Landroidx/compose/runtime/SnapshotMutableIntStateImpl;I)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter$e;

    check-cast p1, Lj44;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Lj44;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p1, p1, Lj44;->b:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter$e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0

    :pswitch_1
    check-cast p0, Landroidx/compose/foundation/ScrollState;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p0, p1}, Landroidx/compose/foundation/ScrollState;->e(Landroidx/compose/foundation/ScrollState;F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Lcom/google/firebase/sessions/SessionDataSerializer;

    check-cast p1, Landroidx/datastore/core/CorruptionException;

    invoke-static {p0, p1}, Lcom/google/firebase/sessions/FirebaseSessionsComponent$MainModule$Companion;->d(Lcom/google/firebase/sessions/SessionDataSerializer;Landroidx/datastore/core/CorruptionException;)Lcom/google/firebase/sessions/SessionData;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Lnb6;

    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lnb6;->b()Lwd6;

    move-result-object p0

    sget-object v0, Lha1;->b:Ljava/nio/charset/Charset;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance p1, Ljava/io/BufferedReader;

    const/16 v0, 0x2000

    invoke-direct {p1, v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    iget-object p0, p0, Lwd6;->a:Lcom/google/gson/Gson;

    new-instance v0, Lhz2;

    invoke-direct {v0}, Lhz2;-><init>()V

    iget-object v0, v0, Lx39;->b:Ljava/lang/reflect/Type;

    invoke-virtual {p0, p1, v0}, Lcom/google/gson/Gson;->e(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/posthog/PostHogEvent;

    return-object p0

    :pswitch_4
    check-cast p0, Landroidx/compose/foundation/contextmenu/ContextMenuState;

    check-cast p1, Landroidx/compose/ui/geometry/Offset;

    invoke-static {p0, p1}, Landroidx/compose/foundation/contextmenu/ContextMenuGesturesKt;->a(Landroidx/compose/foundation/contextmenu/ContextMenuState;Landroidx/compose/ui/geometry/Offset;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
