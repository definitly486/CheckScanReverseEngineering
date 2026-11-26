.class public final Lhx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llk3;


# static fields
.field public static final a:Lhx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lhx;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lhx;->a:Lhx;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/fragment/app/FragmentFactory;)Landroidx/fragment/app/Fragment;
    .locals 0

    sget-object p0, Lcom/warefly/checkscan/auth/presentation/addEmail/view/AddEmailFragment;->i:Lcom/warefly/checkscan/auth/presentation/addEmail/view/AddEmailFragment$a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/warefly/checkscan/auth/presentation/addEmail/view/AddEmailFragment;

    invoke-direct {p0}, Lcom/warefly/checkscan/auth/presentation/addEmail/view/AddEmailFragment;-><init>()V

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    const-class p0, Lhx;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
