.class public final Lkd$a$j$b;
.super Lkd$a$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkd$a$j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final e:Lkd$a$j$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkd$a$j$b;

    const-string v1, "CheckBalance"

    invoke-direct {v0, v1}, Lkd$a$j;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lkd$a$j$b;->e:Lkd$a$j$b;

    return-void
.end method
