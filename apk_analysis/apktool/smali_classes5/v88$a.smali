.class public final synthetic Lv88$a;
.super Lqm3;
.source "SourceFile"

# interfaces
.implements Ldm3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv88;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lqm3;",
        "Ldm3<",
        "Landroid/view/LayoutInflater;",
        "Landroid/view/ViewGroup;",
        "Ljava/lang/Boolean;",
        "Lcom/warefly/checkscan/databinding/ItemAdmitadRvStepBinding;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lv88$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lv88$a;

    const-string v4, "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/ItemAdmitadRvStepBinding;"

    const/4 v5, 0x0

    const/4 v1, 0x3

    const-class v2, Lcom/warefly/checkscan/databinding/ItemAdmitadRvStepBinding;

    const-string v3, "inflate"

    invoke-direct/range {v0 .. v5}, Lqm3;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lv88$a;->c:Lv88$a;

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

    invoke-static {p1, p2, p0}, Lcom/warefly/checkscan/databinding/ItemAdmitadRvStepBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/ItemAdmitadRvStepBinding;

    move-result-object p0

    return-object p0
.end method
