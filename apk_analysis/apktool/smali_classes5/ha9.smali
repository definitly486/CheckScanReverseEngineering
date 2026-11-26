.class public final Lha9;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lfh8;

.field public static final b:Lfh8;

.field public static final c:Lfh8;

.field public static final d:Lf44;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lha9$b;->f:Lha9$b;

    invoke-static {v0}, Lnm4;->b(Lll3;)Lfh8;

    move-result-object v0

    sput-object v0, Lha9;->a:Lfh8;

    sget-object v0, Lha9$c;->f:Lha9$c;

    invoke-static {v0}, Lnm4;->b(Lll3;)Lfh8;

    move-result-object v0

    sput-object v0, Lha9;->b:Lfh8;

    sget-object v0, Lha9$a;->f:Lha9$a;

    invoke-static {v0}, Lnm4;->b(Lll3;)Lfh8;

    move-result-object v0

    sput-object v0, Lha9;->c:Lfh8;

    new-instance v0, Lf44;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lf44;-><init>(Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v0, Lha9;->d:Lf44;

    return-void
.end method
