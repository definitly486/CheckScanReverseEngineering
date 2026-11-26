.class public final Lpo2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lfh8;

.field public static final b:Lfh8;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lpo2$c;->f:Lpo2$c;

    invoke-static {v0}, Lnm4;->b(Lll3;)Lfh8;

    sget-object v0, Lpo2$d;->f:Lpo2$d;

    invoke-static {v0}, Lnm4;->b(Lll3;)Lfh8;

    move-result-object v0

    sput-object v0, Lpo2;->a:Lfh8;

    sget-object v0, Lpo2$b;->f:Lpo2$b;

    invoke-static {v0}, Lnm4;->b(Lll3;)Lfh8;

    sget-object v0, Lpo2$a;->f:Lpo2$a;

    invoke-static {v0}, Lnm4;->b(Lll3;)Lfh8;

    move-result-object v0

    sput-object v0, Lpo2;->b:Lfh8;

    sget v0, Luy8;->a:I

    return-void
.end method

.method public static a()Ljo2;
    .locals 1

    sget-object v0, Lsm1;->c:Lsm1;

    monitor-enter v0

    monitor-exit v0

    sget-object v0, Lpo2;->b:Lfh8;

    invoke-virtual {v0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljo2;

    return-object v0
.end method
