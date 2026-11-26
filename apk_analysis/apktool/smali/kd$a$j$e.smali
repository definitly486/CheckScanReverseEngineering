.class public final Lkd$a$j$e;
.super Lkd$a$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkd$a$j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# static fields
.field public static final e:Lkd$a$j$e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkd$a$j$e;

    const-string v1, "OkBottom"

    invoke-direct {v0, v1}, Lkd$a$j;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lkd$a$j$e;->e:Lkd$a$j$e;

    return-void
.end method
