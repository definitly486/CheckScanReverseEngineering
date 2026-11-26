.class public final Liu8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lj79;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj79<",
            "Lhu8;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lj79;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj79<",
            "Lhu8;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lj79;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj79<",
            "Lhu8;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lfp3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfp3<",
            "Lhu8;",
            "Led2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lj79;

    new-instance v1, Lwr6;

    sget-object v2, Liu8$c;->c:Liu8$c;

    invoke-direct {v1, v2}, Lwr6;-><init>(Lxe4;)V

    const/4 v4, 0x0

    const/16 v5, 0x38

    const/4 v2, 0x0

    const/16 v3, 0x17

    invoke-direct/range {v0 .. v5}, Lj79;-><init>(Lwr6;IILyu5$c;I)V

    sput-object v0, Liu8;->a:Lj79;

    new-instance v1, Lj79;

    new-instance v2, Lwr6;

    sget-object v0, Liu8$e;->c:Liu8$e;

    invoke-direct {v2, v0}, Lwr6;-><init>(Lxe4;)V

    const/4 v5, 0x0

    const/16 v6, 0x38

    const/4 v3, 0x0

    const/16 v4, 0x3b

    invoke-direct/range {v1 .. v6}, Lj79;-><init>(Lwr6;IILyu5$c;I)V

    sput-object v1, Liu8;->b:Lj79;

    new-instance v2, Lj79;

    new-instance v3, Lwr6;

    sget-object v0, Liu8$f;->c:Liu8$f;

    invoke-direct {v3, v0}, Lwr6;-><init>(Lxe4;)V

    const/4 v6, 0x0

    const/16 v7, 0x28

    const/4 v4, 0x0

    const/16 v5, 0x3b

    invoke-direct/range {v2 .. v7}, Lj79;-><init>(Lwr6;IILyu5$c;I)V

    sput-object v2, Liu8;->c:Lj79;

    new-instance v0, Lfp3;

    new-instance v1, Lwr6;

    sget-object v2, Liu8$b;->c:Liu8$b;

    invoke-direct {v1, v2}, Lwr6;-><init>(Lxe4;)V

    new-instance v2, Led2;

    const/16 v3, 0x9

    invoke-direct {v2, v4, v3}, Led2;-><init>(II)V

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lfp3;-><init>(Lwr6;Led2;I)V

    sput-object v0, Liu8;->d:Lfp3;

    sget-object v0, Liu8$a;->c:Liu8$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lme4;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Liu8$d;->c:Liu8$d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lme4;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
