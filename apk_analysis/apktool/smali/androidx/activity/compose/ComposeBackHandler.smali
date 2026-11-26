.class final Landroidx/activity/compose/ComposeBackHandler;
.super Landroidx/activity/compose/internal/BackHandlerCompat;
.source "SourceFile"


# instance fields
.field private currentOnBackCompleted:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/activity/compose/BackHandlerInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/activity/compose/internal/BackHandlerCompat;-><init>(Landroidx/navigationevent/NavigationEventInfo;)V

    new-instance p1, Landroidx/activity/compose/f;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/compose/ComposeBackHandler;->currentOnBackCompleted:Lll3;

    return-void
.end method

.method public static synthetic a()Lj59;
    .locals 1

    invoke-static {}, Landroidx/activity/compose/ComposeBackHandler;->currentOnBackCompleted$lambda$0()Lj59;

    move-result-object v0

    return-object v0
.end method

.method private static final currentOnBackCompleted$lambda$0()Lj59;
    .locals 1

    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method


# virtual methods
.method public final getCurrentOnBackCompleted()Lll3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lll3<",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/activity/compose/ComposeBackHandler;->currentOnBackCompleted:Lll3;

    return-object p0
.end method

.method public onBackCompleted()V
    .locals 0

    iget-object p0, p0, Landroidx/activity/compose/ComposeBackHandler;->currentOnBackCompleted:Lll3;

    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final setCurrentOnBackCompleted(Lll3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/activity/compose/ComposeBackHandler;->currentOnBackCompleted:Lll3;

    return-void
.end method
