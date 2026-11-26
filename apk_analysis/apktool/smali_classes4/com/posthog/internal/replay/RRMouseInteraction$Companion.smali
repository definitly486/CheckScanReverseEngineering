.class public final Lcom/posthog/internal/replay/RRMouseInteraction$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/posthog/internal/replay/RRMouseInteraction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljh2;)V
    .locals 0

    invoke-direct {p0}, Lcom/posthog/internal/replay/RRMouseInteraction$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromValue(I)Lcom/posthog/internal/replay/RRMouseInteraction;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/posthog/internal/replay/RRMouseInteraction;->TouchCancel:Lcom/posthog/internal/replay/RRMouseInteraction;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/posthog/internal/replay/RRMouseInteraction;->TouchEnd:Lcom/posthog/internal/replay/RRMouseInteraction;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/posthog/internal/replay/RRMouseInteraction;->TouchMoveDeparted:Lcom/posthog/internal/replay/RRMouseInteraction;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/posthog/internal/replay/RRMouseInteraction;->TouchStart:Lcom/posthog/internal/replay/RRMouseInteraction;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/posthog/internal/replay/RRMouseInteraction;->Blur:Lcom/posthog/internal/replay/RRMouseInteraction;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/posthog/internal/replay/RRMouseInteraction;->Focus:Lcom/posthog/internal/replay/RRMouseInteraction;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/posthog/internal/replay/RRMouseInteraction;->DblClick:Lcom/posthog/internal/replay/RRMouseInteraction;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/posthog/internal/replay/RRMouseInteraction;->ContextMenu:Lcom/posthog/internal/replay/RRMouseInteraction;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/posthog/internal/replay/RRMouseInteraction;->Click:Lcom/posthog/internal/replay/RRMouseInteraction;

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/posthog/internal/replay/RRMouseInteraction;->MouseDown:Lcom/posthog/internal/replay/RRMouseInteraction;

    return-object p0

    :pswitch_a
    sget-object p0, Lcom/posthog/internal/replay/RRMouseInteraction;->MouseUp:Lcom/posthog/internal/replay/RRMouseInteraction;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
