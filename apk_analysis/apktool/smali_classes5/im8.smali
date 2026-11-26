.class public final Lim8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhe2;


# virtual methods
.method public final a(Landroid/net/Uri;)Lcom/warefly/checkscan/presentation/Deeplink;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "id"

    invoke-virtual {p1, p0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 p1, 0xa

    invoke-static {p1, p0}, Lqa8;->o(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    new-instance p1, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Tasks;

    new-instance v0, Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$CheckboxStepsTaskDetails;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$CheckboxStepsTaskDetails;-><init>(I)V

    invoke-direct {p1, v0}, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Tasks;-><init>(Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    const-string p0, "task-checkboxsteps"

    return-object p0
.end method
