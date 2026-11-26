.class public final Lah4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ldt;

.field public static volatile b:Lom5;

.field public static volatile c:Lfm5;

.field public static final d:Llh8;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Ldt;->AUTOMATIC:Ldt;

    sput-object v0, Lah4;->a:Ldt;

    new-instance v0, Llh8;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Llh8;-><init>(I)V

    sput-object v0, Lah4;->d:Llh8;

    return-void
.end method
