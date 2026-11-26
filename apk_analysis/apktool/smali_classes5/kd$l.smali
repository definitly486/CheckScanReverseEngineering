.class public final Lkd$l;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Lcom/google/gson/Gson;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lkd$l;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkd$l;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lkd$l;->f:Lkd$l;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    new-instance p0, Lws3;

    invoke-direct {p0}, Lws3;-><init>()V

    sget-object v0, Lwi3;->e:Lwi3;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lws3;->g:Lwi3;

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0, p0}, Lcom/google/gson/Gson;-><init>(Lws3;)V

    return-object v0
.end method
