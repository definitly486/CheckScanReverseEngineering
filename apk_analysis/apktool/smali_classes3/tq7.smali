.class public final Ltq7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lfh8;

.field public static final b:Lfh8;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkr2;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lkr2;-><init>(I)V

    new-instance v1, Lfh8;

    invoke-direct {v1, v0}, Lfh8;-><init>(Lll3;)V

    sput-object v1, Ltq7;->a:Lfh8;

    new-instance v0, Llr2;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Llr2;-><init>(I)V

    new-instance v1, Lfh8;

    invoke-direct {v1, v0}, Lfh8;-><init>(Lll3;)V

    sput-object v1, Ltq7;->b:Lfh8;

    return-void
.end method
