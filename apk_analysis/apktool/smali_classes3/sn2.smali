.class public abstract Lsn2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lsn2$a;

.field public static final b:Lsn2$b;

.field public static final c:Lsn2$c;

.field public static final d:Lsn2$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsn2$a;

    invoke-direct {v0}, Lsn2;-><init>()V

    sput-object v0, Lsn2;->a:Lsn2$a;

    new-instance v0, Lsn2$b;

    invoke-direct {v0}, Lsn2;-><init>()V

    sput-object v0, Lsn2;->b:Lsn2$b;

    new-instance v0, Lsn2$c;

    invoke-direct {v0}, Lsn2;-><init>()V

    sput-object v0, Lsn2;->c:Lsn2$c;

    new-instance v0, Lsn2$d;

    invoke-direct {v0}, Lsn2;-><init>()V

    new-instance v0, Lsn2$e;

    invoke-direct {v0}, Lsn2;-><init>()V

    sput-object v0, Lsn2;->d:Lsn2$e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Z
.end method

.method public abstract b()Z
.end method

.method public abstract c(Ly82;)Z
.end method

.method public abstract d(ZLy82;Lrx2;)Z
.end method
