.class public final Ld59;
.super Lr22;
.source "SourceFile"


# static fields
.field public static final c:Ld59;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ld59;

    invoke-direct {v0}, Lr22;-><init>()V

    sput-object v0, Ld59;->c:Ld59;

    return-void
.end method


# virtual methods
.method public final dispatch(Lo22;Ljava/lang/Runnable;)V
    .locals 0

    sget-object p0, Lcm9;->d:Lcm9$a;

    invoke-interface {p1, p0}, Lo22;->get(Lo22$b;)Lo22$a;

    move-result-object p0

    check-cast p0, Lcm9;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcm9;->c:Z

    return-void

    :cond_0
    const-string p0, "Dispatchers.Unconfined.dispatch function can only be used by the yield function. If you wrap Unconfined dispatcher in your code, make sure you properly delegate isDispatchNeeded and dispatch calls."

    invoke-static {p0}, Ln1;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final isDispatchNeeded(Lo22;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final limitedParallelism(ILjava/lang/String;)Lr22;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "limitedParallelism is not supported for Dispatchers.Unconfined"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Dispatchers.Unconfined"

    return-object p0
.end method
