.class public final Lkd$j$c$c;
.super Lkd$j$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkd$j$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final e:Lkd$j$c$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkd$j$c$c;

    const-string v1, "HasBadPhone"

    invoke-direct {v0, v1}, Lkd$j$c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkd$j$c$c;->e:Lkd$j$c$c;

    return-void
.end method
