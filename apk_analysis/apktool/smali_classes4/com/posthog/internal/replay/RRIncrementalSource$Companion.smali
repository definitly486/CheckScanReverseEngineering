.class public final Lcom/posthog/internal/replay/RRIncrementalSource$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/posthog/internal/replay/RRIncrementalSource;
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

    invoke-direct {p0}, Lcom/posthog/internal/replay/RRIncrementalSource$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromValue(I)Lcom/posthog/internal/replay/RRIncrementalSource;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/posthog/internal/replay/RRIncrementalSource;->CustomElement:Lcom/posthog/internal/replay/RRIncrementalSource;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/posthog/internal/replay/RRIncrementalSource;->AdoptedStyleSheet:Lcom/posthog/internal/replay/RRIncrementalSource;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/posthog/internal/replay/RRIncrementalSource;->Selection:Lcom/posthog/internal/replay/RRIncrementalSource;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/posthog/internal/replay/RRIncrementalSource;->StyleDeclaration:Lcom/posthog/internal/replay/RRIncrementalSource;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/posthog/internal/replay/RRIncrementalSource;->Drag:Lcom/posthog/internal/replay/RRIncrementalSource;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/posthog/internal/replay/RRIncrementalSource;->Log:Lcom/posthog/internal/replay/RRIncrementalSource;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/posthog/internal/replay/RRIncrementalSource;->Font:Lcom/posthog/internal/replay/RRIncrementalSource;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/posthog/internal/replay/RRIncrementalSource;->CanvasMutation:Lcom/posthog/internal/replay/RRIncrementalSource;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/posthog/internal/replay/RRIncrementalSource;->StyleSheetRule:Lcom/posthog/internal/replay/RRIncrementalSource;

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/posthog/internal/replay/RRIncrementalSource;->MediaInteraction:Lcom/posthog/internal/replay/RRIncrementalSource;

    return-object p0

    :pswitch_a
    sget-object p0, Lcom/posthog/internal/replay/RRIncrementalSource;->TouchMove:Lcom/posthog/internal/replay/RRIncrementalSource;

    return-object p0

    :pswitch_b
    sget-object p0, Lcom/posthog/internal/replay/RRIncrementalSource;->Input:Lcom/posthog/internal/replay/RRIncrementalSource;

    return-object p0

    :pswitch_c
    sget-object p0, Lcom/posthog/internal/replay/RRIncrementalSource;->ViewportResize:Lcom/posthog/internal/replay/RRIncrementalSource;

    return-object p0

    :pswitch_d
    sget-object p0, Lcom/posthog/internal/replay/RRIncrementalSource;->Scroll:Lcom/posthog/internal/replay/RRIncrementalSource;

    return-object p0

    :pswitch_e
    sget-object p0, Lcom/posthog/internal/replay/RRIncrementalSource;->MouseInteraction:Lcom/posthog/internal/replay/RRIncrementalSource;

    return-object p0

    :pswitch_f
    sget-object p0, Lcom/posthog/internal/replay/RRIncrementalSource;->MouseMove:Lcom/posthog/internal/replay/RRIncrementalSource;

    return-object p0

    :pswitch_10
    sget-object p0, Lcom/posthog/internal/replay/RRIncrementalSource;->Mutation:Lcom/posthog/internal/replay/RRIncrementalSource;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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
