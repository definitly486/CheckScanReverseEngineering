.class public final Lkd$a$f$d;
.super Lkd$a$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkd$a$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field public static final e:Lkd$a$f$d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkd$a$f$d;

    const-string v1, "GreatBottom"

    invoke-direct {v0, v1}, Lkd$a$f;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lkd$a$f$d;->e:Lkd$a$f$d;

    return-void
.end method
