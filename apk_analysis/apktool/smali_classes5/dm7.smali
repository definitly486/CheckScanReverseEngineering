.class public final Ldm7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lbh8;

.field public static final b:Lbh8;

.field public static final c:Lbh8;

.field public static final d:Lbh8;

.field public static final e:Lbh8;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbh8;

    const-string v1, "STATE_REG"

    invoke-direct {v0, v1}, Lbh8;-><init>(Ljava/lang/String;)V

    sput-object v0, Ldm7;->a:Lbh8;

    new-instance v0, Lbh8;

    const-string v1, "STATE_COMPLETED"

    invoke-direct {v0, v1}, Lbh8;-><init>(Ljava/lang/String;)V

    sput-object v0, Ldm7;->b:Lbh8;

    new-instance v0, Lbh8;

    const-string v1, "STATE_CANCELLED"

    invoke-direct {v0, v1}, Lbh8;-><init>(Ljava/lang/String;)V

    sput-object v0, Ldm7;->c:Lbh8;

    new-instance v0, Lbh8;

    const-string v1, "NO_RESULT"

    invoke-direct {v0, v1}, Lbh8;-><init>(Ljava/lang/String;)V

    sput-object v0, Ldm7;->d:Lbh8;

    new-instance v0, Lbh8;

    const-string v1, "PARAM_CLAUSE_0"

    invoke-direct {v0, v1}, Lbh8;-><init>(Ljava/lang/String;)V

    sput-object v0, Ldm7;->e:Lbh8;

    return-void
.end method
