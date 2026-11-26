.class public final synthetic Lub4;
.super Lqm3;
.source "SourceFile"

# interfaces
.implements Ldm3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lqm3;",
        "Ldm3<",
        "Lsb4;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lub4;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lub4;

    const-string v4, "onAwaitInternalProcessResFunc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    const/4 v5, 0x0

    const/4 v1, 0x3

    const-class v2, Lsb4;

    const-string v3, "onAwaitInternalProcessResFunc"

    invoke-direct/range {v0 .. v5}, Lqm3;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lub4;->c:Lub4;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lsb4;

    sget p0, Lsb4;->d:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p3, Lyq1;

    if-nez p0, :cond_0

    return-object p3

    :cond_0
    check-cast p3, Lyq1;

    iget-object p0, p3, Lyq1;->a:Ljava/lang/Throwable;

    throw p0
.end method
