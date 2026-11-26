.class public final Lo4;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "La57<",
        "Lb57;",
        ">;",
        "Lc4$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lo4;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo4;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lo4;->f:Lo4;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, La57;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, La57;->a:Lz47;

    iget p0, p0, Lz47;->e:I

    const/16 p1, 0xc8

    if-gt p1, p0, :cond_0

    const/16 p1, 0x12c

    if-ge p0, p1, :cond_0

    sget-object p0, Lc4$a;->NewUsernameSent:Lc4$a;

    return-object p0

    :cond_0
    const/16 p1, 0x194

    if-ne p0, p1, :cond_1

    sget-object p0, Lc4$a;->UsernameNotFound:Lc4$a;

    return-object p0

    :cond_1
    const/16 p1, 0x1f4

    if-gt p1, p0, :cond_2

    const/16 p1, 0x258

    if-ge p0, p1, :cond_2

    sget-object p0, Lc4$a;->BackendError:Lc4$a;

    return-object p0

    :cond_2
    const/16 p1, 0x199

    if-ne p0, p1, :cond_3

    sget-object p0, Lc4$a;->AlreadyCreated:Lc4$a;

    return-object p0

    :cond_3
    sget-object p0, Lc4$a;->Error:Lc4$a;

    return-object p0
.end method
