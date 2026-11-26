.class public abstract Lcom/warefly/checkscan/data/db/CheckscanDatabase;
.super Landroidx/room/RoomDatabase;
.source "SourceFile"


# static fields
.field public static final a:Lfh8;

.field public static final b:Lcom/warefly/checkscan/data/db/CheckscanDatabase$a;

.field public static final c:Lcom/warefly/checkscan/data/db/CheckscanDatabase$b;

.field public static final d:Lcom/warefly/checkscan/data/db/CheckscanDatabase$c;

.field public static final e:Lcom/warefly/checkscan/data/db/CheckscanDatabase$d;

.field public static final f:Lcom/warefly/checkscan/data/db/CheckscanDatabase$e;

.field public static final g:Lcom/warefly/checkscan/data/db/CheckscanDatabase$f;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lcom/warefly/checkscan/data/db/CheckscanDatabase$g;->f:Lcom/warefly/checkscan/data/db/CheckscanDatabase$g;

    invoke-static {v0}, Lnm4;->b(Lll3;)Lfh8;

    move-result-object v0

    sput-object v0, Lcom/warefly/checkscan/data/db/CheckscanDatabase;->a:Lfh8;

    new-instance v0, Lcom/warefly/checkscan/data/db/CheckscanDatabase$a;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/room/migration/Migration;-><init>(II)V

    sput-object v0, Lcom/warefly/checkscan/data/db/CheckscanDatabase;->b:Lcom/warefly/checkscan/data/db/CheckscanDatabase$a;

    new-instance v0, Lcom/warefly/checkscan/data/db/CheckscanDatabase$b;

    const/4 v1, 0x3

    invoke-direct {v0, v2, v1}, Landroidx/room/migration/Migration;-><init>(II)V

    sput-object v0, Lcom/warefly/checkscan/data/db/CheckscanDatabase;->c:Lcom/warefly/checkscan/data/db/CheckscanDatabase$b;

    new-instance v0, Lcom/warefly/checkscan/data/db/CheckscanDatabase$c;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroidx/room/migration/Migration;-><init>(II)V

    sput-object v0, Lcom/warefly/checkscan/data/db/CheckscanDatabase;->d:Lcom/warefly/checkscan/data/db/CheckscanDatabase$c;

    new-instance v0, Lcom/warefly/checkscan/data/db/CheckscanDatabase$d;

    const/4 v1, 0x5

    invoke-direct {v0, v2, v1}, Landroidx/room/migration/Migration;-><init>(II)V

    sput-object v0, Lcom/warefly/checkscan/data/db/CheckscanDatabase;->e:Lcom/warefly/checkscan/data/db/CheckscanDatabase$d;

    new-instance v0, Lcom/warefly/checkscan/data/db/CheckscanDatabase$e;

    const/16 v1, 0x8

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroidx/room/migration/Migration;-><init>(II)V

    sput-object v0, Lcom/warefly/checkscan/data/db/CheckscanDatabase;->f:Lcom/warefly/checkscan/data/db/CheckscanDatabase$e;

    new-instance v0, Lcom/warefly/checkscan/data/db/CheckscanDatabase$f;

    const/16 v1, 0xa

    invoke-direct {v0, v2, v1}, Landroidx/room/migration/Migration;-><init>(II)V

    sput-object v0, Lcom/warefly/checkscan/data/db/CheckscanDatabase;->g:Lcom/warefly/checkscan/data/db/CheckscanDatabase$f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract e()Lr71;
.end method

.method public abstract f()Lwf1;
.end method

.method public abstract g()Lip5;
.end method

.method public abstract h()Lzt6;
.end method
