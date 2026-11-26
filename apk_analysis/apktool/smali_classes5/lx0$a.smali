.class public final Llx0$a;
.super Lb57;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llx0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final c:Lun2$c;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Liy6;


# direct methods
.method public constructor <init>(Lun2$c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lb57;-><init>()V

    iput-object p1, p0, Llx0$a;->c:Lun2$c;

    iput-object p2, p0, Llx0$a;->d:Ljava/lang/String;

    iput-object p3, p0, Llx0$a;->e:Ljava/lang/String;

    const/4 p2, 0x1

    iget-object p1, p1, Lun2$c;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv48;

    new-instance p2, Llx0$a$a;

    invoke-direct {p2, p1, p0}, Llx0$a$a;-><init>(Lv48;Llx0$a;)V

    new-instance p1, Liy6;

    invoke-direct {p1, p2}, Liy6;-><init>(Lv48;)V

    iput-object p1, p0, Llx0$a;->f:Liy6;

    return-void
.end method


# virtual methods
.method public final L()Lwu0;
    .locals 0

    iget-object p0, p0, Llx0$a;->f:Liy6;

    return-object p0
.end method

.method public final o()J
    .locals 3

    const-wide/16 v0, -0x1

    iget-object p0, p0, Llx0$a;->e:Ljava/lang/String;

    if-eqz p0, :cond_0

    sget-object v2, Lgb9;->a:[B

    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-wide v0
.end method

.method public final p()Lj95;
    .locals 2

    const/4 v0, 0x0

    iget-object p0, p0, Llx0$a;->d:Ljava/lang/String;

    if-eqz p0, :cond_0

    sget-object v1, Lj95;->e:Ljava/util/regex/Pattern;

    :try_start_0
    invoke-static {p0}, Lj95$a;->a(Ljava/lang/String;)Lj95;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    return-object v0
.end method
