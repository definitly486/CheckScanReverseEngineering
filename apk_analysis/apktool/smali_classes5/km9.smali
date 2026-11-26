.class public final synthetic Lkm9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Lr07;

.field public final synthetic c:Liy6;

.field public final synthetic d:Lr07;

.field public final synthetic e:Lr07;


# direct methods
.method public synthetic constructor <init>(Liy6;Lr07;Lr07;Lr07;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lkm9;->b:Lr07;

    iput-object p1, p0, Lkm9;->c:Liy6;

    iput-object p3, p0, Lkm9;->d:Lr07;

    iput-object p4, p0, Lkm9;->e:Lr07;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lkm9;->b:Lr07;

    iget-object p2, p1, Lr07;->b:Ljava/lang/Object;

    const/4 v2, 0x0

    if-nez p2, :cond_1

    const-wide/16 v3, 0x18

    cmp-long p2, v0, v3

    if-nez p2, :cond_0

    iget-object p2, p0, Lkm9;->c:Liy6;

    invoke-virtual {p2}, Liy6;->v()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Lr07;->b:Ljava/lang/Object;

    invoke-virtual {p2}, Liy6;->v()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-object v0, p0, Lkm9;->d:Lr07;

    iput-object p1, v0, Lr07;->b:Ljava/lang/Object;

    invoke-virtual {p2}, Liy6;->v()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-object p0, p0, Lkm9;->e:Lr07;

    iput-object p1, p0, Lr07;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p0, "bad zip: NTFS extra attribute tag 0x0001 size != 24"

    invoke-static {p0}, Lki0;->d(Ljava/lang/String;)V

    return-object v2

    :cond_1
    const-string p0, "bad zip: NTFS extra attribute tag 0x0001 repeated"

    invoke-static {p0}, Lki0;->d(Ljava/lang/String;)V

    return-object v2

    :cond_2
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
