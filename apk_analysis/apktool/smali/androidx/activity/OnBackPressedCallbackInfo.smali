.class final Landroidx/activity/OnBackPressedCallbackInfo;
.super Landroidx/navigationevent/NavigationEventInfo;
.source "SourceFile"


# instance fields
.field private final callback:Landroidx/activity/OnBackPressedCallback;

.field private final owner:Landroidx/lifecycle/LifecycleOwner;


# direct methods
.method public constructor <init>(Landroidx/activity/OnBackPressedCallback;Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroidx/navigationevent/NavigationEventInfo;-><init>()V

    iput-object p1, p0, Landroidx/activity/OnBackPressedCallbackInfo;->callback:Landroidx/activity/OnBackPressedCallback;

    iput-object p2, p0, Landroidx/activity/OnBackPressedCallbackInfo;->owner:Landroidx/lifecycle/LifecycleOwner;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/activity/OnBackPressedCallback;Landroidx/lifecycle/LifecycleOwner;ILjh2;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 11
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/activity/OnBackPressedCallbackInfo;-><init>(Landroidx/activity/OnBackPressedCallback;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public static synthetic copy$default(Landroidx/activity/OnBackPressedCallbackInfo;Landroidx/activity/OnBackPressedCallback;Landroidx/lifecycle/LifecycleOwner;ILjava/lang/Object;)Landroidx/activity/OnBackPressedCallbackInfo;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Landroidx/activity/OnBackPressedCallbackInfo;->callback:Landroidx/activity/OnBackPressedCallback;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Landroidx/activity/OnBackPressedCallbackInfo;->owner:Landroidx/lifecycle/LifecycleOwner;

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroidx/activity/OnBackPressedCallbackInfo;->copy(Landroidx/activity/OnBackPressedCallback;Landroidx/lifecycle/LifecycleOwner;)Landroidx/activity/OnBackPressedCallbackInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroidx/activity/OnBackPressedCallback;
    .locals 0

    iget-object p0, p0, Landroidx/activity/OnBackPressedCallbackInfo;->callback:Landroidx/activity/OnBackPressedCallback;

    return-object p0
.end method

.method public final component2()Landroidx/lifecycle/LifecycleOwner;
    .locals 0

    iget-object p0, p0, Landroidx/activity/OnBackPressedCallbackInfo;->owner:Landroidx/lifecycle/LifecycleOwner;

    return-object p0
.end method

.method public final copy(Landroidx/activity/OnBackPressedCallback;Landroidx/lifecycle/LifecycleOwner;)Landroidx/activity/OnBackPressedCallbackInfo;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroidx/activity/OnBackPressedCallbackInfo;

    invoke-direct {p0, p1, p2}, Landroidx/activity/OnBackPressedCallbackInfo;-><init>(Landroidx/activity/OnBackPressedCallback;Landroidx/lifecycle/LifecycleOwner;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/activity/OnBackPressedCallbackInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/activity/OnBackPressedCallbackInfo;

    iget-object v1, p0, Landroidx/activity/OnBackPressedCallbackInfo;->callback:Landroidx/activity/OnBackPressedCallback;

    iget-object v3, p1, Landroidx/activity/OnBackPressedCallbackInfo;->callback:Landroidx/activity/OnBackPressedCallback;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Landroidx/activity/OnBackPressedCallbackInfo;->owner:Landroidx/lifecycle/LifecycleOwner;

    iget-object p1, p1, Landroidx/activity/OnBackPressedCallbackInfo;->owner:Landroidx/lifecycle/LifecycleOwner;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getCallback()Landroidx/activity/OnBackPressedCallback;
    .locals 0

    iget-object p0, p0, Landroidx/activity/OnBackPressedCallbackInfo;->callback:Landroidx/activity/OnBackPressedCallback;

    return-object p0
.end method

.method public final getOwner()Landroidx/lifecycle/LifecycleOwner;
    .locals 0

    iget-object p0, p0, Landroidx/activity/OnBackPressedCallbackInfo;->owner:Landroidx/lifecycle/LifecycleOwner;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/activity/OnBackPressedCallbackInfo;->callback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroidx/activity/OnBackPressedCallbackInfo;->owner:Landroidx/lifecycle/LifecycleOwner;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OnBackPressedCallbackInfo(callback="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/activity/OnBackPressedCallbackInfo;->callback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", owner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/activity/OnBackPressedCallbackInfo;->owner:Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
