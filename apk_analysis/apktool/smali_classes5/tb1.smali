.class public final synthetic Ltb1;
.super Lqm3;
.source "SourceFile"

# interfaces
.implements Ldm3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lqm3;",
        "Ldm3<",
        "Landroid/view/LayoutInflater;",
        "Landroid/view/ViewGroup;",
        "Ljava/lang/Boolean;",
        "Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskStepsCheckboxBinding;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Ltb1;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ltb1;

    const-string v4, "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskStepsCheckboxBinding;"

    const/4 v5, 0x0

    const/4 v1, 0x3

    const-class v2, Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskStepsCheckboxBinding;

    const-string v3, "inflate"

    invoke-direct/range {v0 .. v5}, Lqm3;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Ltb1;->c:Ltb1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/LayoutInflater;

    check-cast p2, Landroid/view/ViewGroup;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2, p0}, Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskStepsCheckboxBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskStepsCheckboxBinding;

    move-result-object p0

    return-object p0
.end method
