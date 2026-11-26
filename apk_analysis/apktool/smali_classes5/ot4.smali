.class public final Lot4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lfh8;

.field public static final b:Lc44;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lot4$a;->f:Lot4$a;

    invoke-static {v0}, Lnm4;->b(Lll3;)Lfh8;

    move-result-object v0

    sput-object v0, Lot4;->a:Lfh8;

    new-instance v0, Lc44;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc44;-><init>(I)V

    sput-object v0, Lot4;->b:Lc44;

    return-void
.end method
