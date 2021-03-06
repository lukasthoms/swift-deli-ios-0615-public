#import "QCKDSL.h"
#import <Quick/Quick-Swift.h>

void qck_beforeSuite(QCKDSLEmptyBlock closure) {
    [[World sharedWorld] beforeSuite:closure];
}

void qck_afterSuite(QCKDSLEmptyBlock closure) {
    [[World sharedWorld] afterSuite:closure];
}

void qck_sharedExamples(NSString *name, QCKDSLSharedExampleBlock closure) {
    [[World sharedWorld] sharedExamples:name closure:closure];
}

void qck_describe(NSString *description, QCKDSLEmptyBlock closure) {
    [[World sharedWorld] describe:description closure:closure];
}

void qck_context(NSString *description, QCKDSLEmptyBlock closure) {
    qck_describe(description, closure);
}

void qck_beforeEach(QCKDSLEmptyBlock closure) {
    [[World sharedWorld] beforeEach:closure];
}

void qck_afterEach(QCKDSLEmptyBlock closure) {
    [[World sharedWorld] afterEach:closure];
}

QCKItBlock qck_it_builder(NSString *file, NSUInteger line) {
    return ^(NSString *description, QCKDSLEmptyBlock closure) {
        [[World sharedWorld] itWithDescription:description file:file line:line closure:closure];
    };
}

QCKItBehavesLikeBlock qck_itBehavesLike_builder(NSString *file, NSUInteger line) {
    return ^(NSString *name, QCKDSLSharedExampleContext context) {
        [[World sharedWorld] itBehavesLikeSharedExampleNamed:name sharedExampleContext:context file:file line:line];
    };
}

void qck_pending(NSString *description, QCKDSLEmptyBlock closure) {
    [[World sharedWorld] pending:description closure:closure];
}

void qck_xdescribe(NSString *description, QCKDSLEmptyBlock closure) {
    qck_pending(description, closure);
}

void qck_xcontext(NSString *description, QCKDSLEmptyBlock closure) {
    qck_pending(description, closure);
}

void qck_xit(NSString *description, QCKDSLEmptyBlock closure) {
    qck_pending(description, closure);
}
